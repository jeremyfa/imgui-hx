package imgui.demo;

import imgui.ImGui;

/** MyDocument from imgui_demo.cpp. */
private class MyDocument {
    public var name:String;    // Document title
    public var uid:Int;        // Unique ID (necessary as we can change title)
    public var open:Bool;      // Set when open (we keep an array of all available documents to simplify demo code!)
    public var openPrev:Bool;  // Copy of open from last update.
    public var dirty:Bool;     // Set when the document has been modified
    public var color:Array<Float>; // An arbitrary variable associated to the document

    public function new(uid:Int, name:String, open:Bool, color:Array<Float>) {
        this.uid = uid;
        this.name = name;
        this.open = open;
        this.openPrev = open;
        this.dirty = false;
        this.color = color;
    }
    public function doOpen():Void { open = true; }
    public function doForceClose():Void { open = false; dirty = false; }
    public function doSave():Void { dirty = false; }
}

/** Example: Documents (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoAppDocuments {

    static var documents:Array<MyDocument> = [
        new MyDocument(0, 'Lettuce',             true,  [0.4, 0.8, 0.4, 1.0]),
        new MyDocument(1, 'Eggplant',            true,  [0.8, 0.5, 1.0, 1.0]),
        new MyDocument(2, 'Carrot',              true,  [1.0, 0.8, 0.5, 1.0]),
        new MyDocument(3, 'Tomato',              false, [1.0, 0.3, 0.4, 1.0]),
        new MyDocument(4, 'A Rather Long Title', false, [0.4, 0.8, 0.8, 1.0]),
        new MyDocument(5, 'Some Document',       false, [0.8, 0.8, 1.0, 1.0])
    ];
    static var closeQueue:Array<MyDocument> = [];
    static var renamingDoc:MyDocument = null;
    static var renamingStarted:Bool = false;

    static inline var TARGET_NONE:Int = 0;
    static inline var TARGET_TAB:Int = 1;                  // Create documents as local tab into a local tab bar
    static inline var TARGET_DOCKSPACE_AND_WINDOW:Int = 2; // Create documents as regular windows, and create an embedded dockspace
    static var optTarget:Int = TARGET_TAB;
    static var optReorderable:Bool = true;

    static function getTabName(doc:MyDocument):String {
        return doc.name + '###doc' + doc.uid;
    }

    static function displayDocContents(doc:MyDocument):Void {
        ImGui.pushIDInt(doc.uid);
        ImGui.text('Document "' + doc.name + '"');
        ImGui.pushStyleColorImVec4(ImGuiCol.Text, ImVec4.make(doc.color[0], doc.color[1], doc.color[2], doc.color[3]));
        ImGui.textWrapped('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.');
        ImGui.popStyleColor();

        ImGui.setNextItemShortcut(ImGuiKey.ImGuiMod_Ctrl | ImGuiKey.R, ImGuiInputFlags.Tooltip);
        if (ImGui.button('Rename..')) {
            renamingDoc = doc;
            renamingStarted = true;
        }
        ImGui.sameLine();

        ImGui.setNextItemShortcut(ImGuiKey.ImGuiMod_Ctrl | ImGuiKey.M, ImGuiInputFlags.Tooltip);
        if (ImGui.button('Modify'))
            doc.dirty = true;

        ImGui.sameLine();
        ImGui.setNextItemShortcut(ImGuiKey.ImGuiMod_Ctrl | ImGuiKey.S, ImGuiInputFlags.Tooltip);
        if (ImGui.button('Save'))
            doc.doSave();

        ImGui.sameLine();
        ImGui.setNextItemShortcut(ImGuiKey.ImGuiMod_Ctrl | ImGuiKey.W, ImGuiInputFlags.Tooltip);
        if (ImGui.button('Close'))
            closeQueue.push(doc);
        ImGui.colorEdit3('color', doc.color); // Useful to test drag and drop and hold-dragged-to-open-tab behavior.
        ImGui.popID();
    }

    static function displayDocContextMenu(doc:MyDocument):Void {
        if (!ImGui.beginPopupContextItem())
            return;

        if (ImGui.menuItemEx('Save ' + doc.name, 'Ctrl+S', false, doc.open))
            doc.doSave();
        if (ImGui.menuItemEx('Rename...', 'Ctrl+R', false, doc.open))
            renamingDoc = doc;
        if (ImGui.menuItemEx('Close', 'Ctrl+W', false, doc.open))
            closeQueue.push(doc);
        ImGui.endPopup();
    }

    static function notifyOfDocumentsClosedElsewhere():Void {
        for (doc in documents) {
            if (!doc.open && doc.openPrev)
                ImGui.setTabItemClosed(doc.name);
            doc.openPrev = doc.open;
        }
    }

    public static function show():Void {

        var windowContentsVisible = ImGui.begin('Example: Documents', ImGuiDemo.showAppDocuments, ImGuiWindowFlags.MenuBar);
        if (!windowContentsVisible && optTarget != TARGET_DOCKSPACE_AND_WINDOW) {
            ImGui.end();
            return;
        }

        // Menu
        if (ImGui.beginMenuBar()) {
            if (ImGui.beginMenu('File')) {
                var openCount = 0;
                for (doc in documents)
                    openCount += doc.open ? 1 : 0;

                if (ImGui.beginMenuEx('Open', openCount < documents.length)) {
                    for (doc in documents)
                        if (!doc.open && ImGui.menuItem(doc.name))
                            doc.doOpen();
                    ImGui.endMenu();
                }
                if (ImGui.menuItemEx('Close All Documents', null, false, openCount > 0))
                    for (doc in documents)
                        closeQueue.push(doc);
                if (ImGui.menuItem('Exit'))
                    ImGuiDemo.showAppDocuments = false;
                ImGui.endMenu();
            }
            ImGui.endMenuBar();
        }

        // [Debug] List documents with one checkbox for each
        for (docN in 0...documents.length) {
            var doc = documents[docN];
            if (docN > 0)
                ImGui.sameLine();
            ImGui.pushIDInt(doc.uid);
            if (ImGui.checkbox(doc.name, doc.open))
                if (!doc.open)
                    doc.doForceClose();
            ImGui.popID();
        }
        ImGui.pushItemWidth(ImGui.getFontSize() * 12);
        ImGui.combo('Output', optTarget, 'None\x00TabBar+Tabs\x00DockSpace+Window\x00');
        ImGui.popItemWidth();
        var redockAll = false;
        if (optTarget == TARGET_TAB) { ImGui.sameLine(); ImGui.checkbox('Reorderable Tabs', optReorderable); }
        if (optTarget == TARGET_DOCKSPACE_AND_WINDOW) { ImGui.sameLine(); redockAll = ImGui.button('Redock all'); }

        ImGui.separator();

        // Tabs
        if (optTarget == TARGET_TAB) {
            var tabBarFlags = ImGuiTabBarFlags.FittingPolicyMixed | (optReorderable ? ImGuiTabBarFlags.Reorderable : 0);
            tabBarFlags |= ImGuiTabBarFlags.DrawSelectedOverline;
            if (ImGui.beginTabBar('##tabs', tabBarFlags)) {
                if (optReorderable)
                    notifyOfDocumentsClosedElsewhere();

                for (doc in documents) {
                    if (!doc.open)
                        continue;

                    var docNameBuf = getTabName(doc);
                    var tabFlags = doc.dirty ? ImGuiTabItemFlags.UnsavedDocument : 0;
                    var visible = ImGui.beginTabItem(docNameBuf, doc.open, tabFlags);

                    // Cancel attempt to close when unsaved add to save queue so we can display a popup.
                    if (!doc.open && doc.dirty) {
                        doc.open = true;
                        closeQueue.push(doc);
                    }

                    displayDocContextMenu(doc);
                    if (visible) {
                        displayDocContents(doc);
                        ImGui.endTabItem();
                    }
                }

                ImGui.endTabBar();
            }
        }
        else if (optTarget == TARGET_DOCKSPACE_AND_WINDOW) {
            var io = ImGui.getIO();
            if ((io.configFlags & ImGuiConfigFlags.DockingEnable) != 0) {
                notifyOfDocumentsClosedElsewhere();

                // Create a DockSpace node where any window can be docked
                var dockspaceId = ImGui.getID('MyDockSpace');
                ImGui.dockSpace(dockspaceId);

                // Create Windows
                for (doc in documents) {
                    if (!doc.open)
                        continue;

                    ImGui.setNextWindowDockID(dockspaceId, redockAll ? ImGuiCond.Always : ImGuiCond.FirstUseEver);
                    var windowFlags = doc.dirty ? ImGuiWindowFlags.UnsavedDocument : 0;
                    var visible = ImGui.begin(doc.name, doc.open, windowFlags);

                    // Cancel attempt to close when unsaved add to save queue so we can display a popup.
                    if (!doc.open && doc.dirty) {
                        doc.open = true;
                        closeQueue.push(doc);
                    }

                    displayDocContextMenu(doc);
                    if (visible)
                        displayDocContents(doc);

                    ImGui.end();
                }
            }
            else {
                ImGuiDemo.showDockingDisabledMessage();
            }
        }

        // Early out other contents
        if (!windowContentsVisible) {
            ImGui.end();
            return;
        }

        // Display renaming UI
        if (renamingDoc != null) {
            if (renamingStarted)
                ImGui.openPopup('Rename');
            if (ImGui.beginPopup('Rename')) {
                ImGui.setNextItemWidth(ImGui.getFontSize() * 30);
                if (ImGui.inputText('###Name', renamingDoc.name, 32, ImGuiInputTextFlags.EnterReturnsTrue)) {
                    ImGui.closeCurrentPopup();
                    renamingDoc = null;
                }
                if (renamingStarted)
                    ImGui.setKeyboardFocusHereEx(-1);
                ImGui.endPopup();
            }
            else {
                renamingDoc = null;
            }
            renamingStarted = false;
        }

        // Display closing confirmation UI
        if (closeQueue.length > 0) {
            var closeQueueUnsavedDocuments = 0;
            for (doc in closeQueue)
                if (doc.dirty)
                    closeQueueUnsavedDocuments++;

            if (closeQueueUnsavedDocuments == 0) {
                // Close documents when all documents are unsaved
                for (doc in closeQueue)
                    doc.doForceClose();
                closeQueue.resize(0);
            }
            else {
                if (!ImGui.isPopupOpen('Save?'))
                    ImGui.openPopup('Save?');
                if (ImGui.beginPopupModal('Save?', null, ImGuiWindowFlags.AlwaysAutoResize)) {
                    ImGui.text('Save change to the following items?');
                    var itemHeight = ImGui.getTextLineHeightWithSpacing();
                    if (ImGui.beginChild('frame', ImVec2.make(-1.175494351e-38, 6.25 * itemHeight), ImGuiChildFlags.FrameStyle))
                        for (doc in closeQueue)
                            if (doc.dirty)
                                ImGui.text(doc.name);
                    ImGui.endChild();

                    var buttonSize = ImVec2.make(ImGui.getFontSize() * 7.0, 0.0);
                    if (ImGui.buttonEx('Yes', buttonSize)) {
                        for (doc in closeQueue) {
                            if (doc.dirty)
                                doc.doSave();
                            doc.doForceClose();
                        }
                        closeQueue.resize(0);
                        ImGui.closeCurrentPopup();
                    }
                    ImGui.sameLine();
                    if (ImGui.buttonEx('No', buttonSize)) {
                        for (doc in closeQueue)
                            doc.doForceClose();
                        closeQueue.resize(0);
                        ImGui.closeCurrentPopup();
                    }
                    ImGui.sameLine();
                    if (ImGui.buttonEx('Cancel', buttonSize)) {
                        closeQueue.resize(0);
                        ImGui.closeCurrentPopup();
                    }
                    ImGui.endPopup();
                }
            }
        }

        ImGui.end();

    }

}
