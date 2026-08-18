package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/** Popups and modal windows section (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWindowPopups {

    static var fishNames:Array<String> = ['Bream', 'Haddock', 'Mackerel', 'Pollock', 'Tilefish'];
    static var selectedFish:Int = -1;
    static var toggles:Array<Bool> = [true, false, false, false, false];

    static var contextNames:Array<String> = ['Label1', 'Label2', 'Label3', 'Label4', 'Label5'];
    static var contextSelected:Int = -1;
    static var contextValue:Float = 0.5;
    static var contextName:String = 'Label1';

    static var dontAskMeNextTime:Bool = false;
    static var modalItem:Int = 1;
    static var modalColor:Array<Float> = [0.4, 0.7, 0.0, 0.5];

    public static function show():Void {

        if (!ImGui.collapsingHeader('Popups & Modal windows'))
            return;

        popups();
        contextMenus();
        modals();
        menusInsideRegularWindow();

    }

    // =========================================================================
    // Popups
    // =========================================================================

    static function popups():Void {

        if (!ImGui.treeNode('Popups'))
            return;

        ImGui.textWrapped(
            'When a popup is active, it inhibits interacting with windows that are behind the popup. '
            + 'Clicking outside the popup closes it.');

        if (ImGui.button('Select..'))
            ImGui.openPopup('my_select_popup');
        ImGui.sameLine();
        ImGui.textUnformatted(selectedFish == -1 ? '<None>' : fishNames[selectedFish]);
        if (ImGui.beginPopup('my_select_popup')) {
            ImGui.separatorText('Aquarium');
            for (i in 0...fishNames.length)
                if (ImGui.selectableEx(fishNames[i], false, 0, ImVec2.make(0, 0)))
                    selectedFish = i;
            ImGui.endPopup();
        }

        if (ImGui.button('Toggle..'))
            ImGui.openPopup('my_toggle_popup');
        if (ImGui.beginPopup('my_toggle_popup')) {
            for (i in 0...fishNames.length)
                ImGui.menuItemBoolPtr(fishNames[i], '', toggles[i]);
            if (ImGui.beginMenu('Sub-menu')) {
                ImGui.menuItem('Click me');
                ImGui.endMenu();
            }

            ImGui.separator();
            ImGui.text('Tooltip here');
            ImGui.setItemTooltip('I am a tooltip over a popup');

            if (ImGui.button('Stacked Popup'))
                ImGui.openPopup('another popup');
            if (ImGui.beginPopup('another popup')) {
                for (i in 0...fishNames.length)
                    ImGui.menuItemBoolPtr(fishNames[i], '', toggles[i]);
                if (ImGui.beginMenu('Sub-menu')) {
                    ImGui.menuItem('Click me');
                    if (ImGui.button('Stacked Popup'))
                        ImGui.openPopup('another popup');
                    if (ImGui.beginPopup('another popup')) {
                        ImGui.text('I am the last one here.');
                        ImGui.endPopup();
                    }
                    ImGui.endMenu();
                }
                ImGui.endPopup();
            }
            ImGui.endPopup();
        }

        if (ImGui.button('With a menu..'))
            ImGui.openPopup('my_file_popup');
        if (ImGui.beginPopup('my_file_popup', ImGuiWindowFlags.MenuBar)) {
            if (ImGui.beginMenuBar()) {
                if (ImGui.beginMenu('File')) {
                    ImGuiDemo.showExampleMenuFile();
                    ImGui.endMenu();
                }
                if (ImGui.beginMenu('Edit')) {
                    ImGui.menuItem('Dummy');
                    ImGui.endMenu();
                }
                ImGui.endMenuBar();
            }
            ImGui.text('Hello from popup!');
            ImGui.button('This is a dummy button..');
            ImGui.endPopup();
        }

        ImGui.treePop();

    }

    // =========================================================================
    // Context menus
    // =========================================================================

    static function contextMenus():Void {

        if (!ImGui.treeNode('Context menus'))
            return;

        helpMarker('"Context" functions are simple helpers to associate a Popup to a given Item or Window identifier.');

        {
            for (n in 0...5) {
                if (ImGui.selectableEx(contextNames[n], contextSelected == n, 0, ImVec2.make(0, 0)))
                    contextSelected = n;
                if (ImGui.beginPopupContextItem()) { // <-- use last item id as popup id
                    contextSelected = n;
                    ImGui.text('This is a popup for "' + contextNames[n] + '"!');
                    if (ImGui.button('Close'))
                        ImGui.closeCurrentPopup();
                    ImGui.endPopup();
                }
                ImGui.setItemTooltip('Right-click to open popup');
            }
        }

        {
            helpMarker('Text() elements don\'t have stable identifiers so we need to provide one.');
            ImGui.text('Value = ' + fmt3(contextValue) + ' <-- (1) right-click this text');
            if (ImGui.beginPopupContextItemEx('my popup')) {
                if (ImGui.selectableEx('Set to zero', false, 0, ImVec2.make(0, 0))) contextValue = 0.0;
                if (ImGui.selectableEx('Set to PI', false, 0, ImVec2.make(0, 0))) contextValue = 3.1415;
                ImGui.setNextItemWidth(-1.175494351e-38);
                ImGui.dragFloatEx('##Value', contextValue, 0.1, 0.0, 0.0);
                ImGui.endPopup();
            }

            ImGui.text('(2) Or right-click this text');
            ImGui.openPopupOnItemClick('my popup', ImGuiPopupFlags.MouseButtonRight);

            if (ImGui.button('(3) Or click this button'))
                ImGui.openPopup('my popup');
        }

        {
            helpMarker('Showcase using a popup ID linked to item ID, with the item having a changing label + stable ID using the ### operator.');
            ImGui.button('Button: ' + contextName + '###Button'); // ### operator override ID ignoring the preceding label
            if (ImGui.beginPopupContextItem()) {
                ImGui.text('Edit name:');
                ImGui.inputText('##edit', contextName, 32);
                if (ImGui.button('Close'))
                    ImGui.closeCurrentPopup();
                ImGui.endPopup();
            }
            ImGui.sameLine(); ImGui.text('(<-- right-click here)');
        }

        ImGui.treePop();

    }

    // =========================================================================
    // Modals
    // =========================================================================

    static function modals():Void {

        if (!ImGui.treeNode('Modals'))
            return;

        ImGui.textWrapped('Modal windows are like popups but the user cannot close them by clicking outside.');

        if (ImGui.button('Delete..'))
            ImGui.openPopup('Delete?');

        var mainViewport = ImGui.getMainViewport();
        var vpPos = mainViewport.pos;
        var vpSize = mainViewport.size;
        var center = ImVec2.make(vpPos.x + vpSize.x * 0.5, vpPos.y + vpSize.y * 0.5);
        ImGui.setNextWindowPosEx(center, ImGuiCond.Appearing, ImVec2.make(0.5, 0.5));

        if (ImGui.beginPopupModal('Delete?', null, ImGuiWindowFlags.AlwaysAutoResize)) {
            ImGui.text('All those beautiful files will be deleted.\nThis operation cannot be undone!');
            ImGui.separator();

            ImGui.pushStyleVarImVec2(ImGuiStyleVar.FramePadding, ImVec2.make(0, 0));
            ImGui.checkbox('Don\'t ask me next time', dontAskMeNextTime);
            ImGui.popStyleVar();

            if (ImGui.buttonEx('OK', ImVec2.make(120, 0))) { ImGui.closeCurrentPopup(); }
            ImGui.setItemDefaultFocus();
            ImGui.sameLine();
            if (ImGui.buttonEx('Cancel', ImVec2.make(120, 0))) { ImGui.closeCurrentPopup(); }
            ImGui.endPopup();
        }

        if (ImGui.button('Stacked modals..'))
            ImGui.openPopup('Stacked 1');
        if (ImGui.beginPopupModal('Stacked 1', null, ImGuiWindowFlags.MenuBar)) {
            if (ImGui.beginMenuBar()) {
                if (ImGui.beginMenu('File')) {
                    if (ImGui.menuItem('Some menu item')) {}
                    ImGui.endMenu();
                }
                ImGui.endMenuBar();
            }
            ImGui.text('Hello from Stacked The First\nUsing style.Colors[ImGuiCol_ModalWindowDimBg] behind it.');

            ImGui.combo('Combo', modalItem, 'aaaa\x00bbbb\x00cccc\x00dddd\x00eeee\x00\x00');
            ImGui.colorEdit4('Color', modalColor);

            if (ImGui.button('Add another modal..'))
                ImGui.openPopup('Stacked 2');

            var unusedOpen = true;
            if (ImGui.beginPopupModal('Stacked 2', unusedOpen)) {
                ImGui.text('Hello from Stacked The Second!');
                ImGui.colorEdit4('Color', modalColor); // Allow opening another nested popup
                if (ImGui.button('Close'))
                    ImGui.closeCurrentPopup();
                ImGui.endPopup();
            }

            if (ImGui.button('Close'))
                ImGui.closeCurrentPopup();
            ImGui.endPopup();
        }

        ImGui.treePop();

    }

    // =========================================================================
    // Menus inside a regular window
    // =========================================================================

    static function menusInsideRegularWindow():Void {

        if (!ImGui.treeNode('Menus inside a regular window'))
            return;

        ImGui.textWrapped('Below we are testing adding menu items to a regular window. It\'s rather unusual but should work!');
        ImGui.separator();

        ImGui.menuItemEx('Menu item', 'Ctrl+M');
        if (ImGui.beginMenu('Menu inside a regular window')) {
            ImGuiDemo.showExampleMenuFile();
            ImGui.endMenu();
        }
        ImGui.separator();
        ImGui.treePop();

    }

    /** Format a float with 3 decimals (printf %.3f equivalent). */
    static function fmt3(v:Float):String {
        return '' + (Math.round(v * 1000) / 1000);
    }

}
