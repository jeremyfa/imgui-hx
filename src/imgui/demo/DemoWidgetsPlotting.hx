package imgui.demo;

import imgui.ImGui;

/** Widgets > Plotting (imgui_demo.cpp port, portable Array<Float> plots). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsPlotting {

    static var animate:Bool = true;
    static final arr:Array<Float> = [0.6, 0.1, 1.0, 0.5, 0.92, 0.1, 0.2];
    static var values:Array<Float> = [for (_ in 0...90) 0.0];
    static var valuesOffset:Int = 0;
    static var refreshTime:Float = 0.0;
    static var phase:Float = 0.0;
    static var funcType:Int = 0;
    static var displayCount:Int = 70;
    static var funcValues:Array<Float> = [];

    public static function show():Void {

        if (!ImGui.treeNode('Plotting'))
            return;

        ImGui.text('Need better plotting and graphing? Consider using ImPlot:');
        ImGui.textLinkOpenURL('https://github.com/epezent/implot');
        ImGui.separator();

        ImGui.checkbox('Animate', animate);

        // Plot as lines and plot as histogram
        ImGui.plotLines('Frame Times', arr);
        ImGui.plotHistogramEx('Histogram', arr, 0, null, 0.0, 1.0, ImVec2.make(0, 80.0));

        // Fill an array of contiguous float values to plot
        if (!animate || refreshTime == 0.0)
            refreshTime = ImGui.getTime();
        while (refreshTime < ImGui.getTime()) { // Create data at fixed 60 Hz rate for the demo
            values[valuesOffset] = Math.cos(phase);
            valuesOffset = (valuesOffset + 1) % values.length;
            phase += 0.10 * valuesOffset;
            refreshTime += 1.0 / 60.0;
        }

        // Plots can display overlay texts (here, an average value)
        {
            var average = 0.0;
            for (n in 0...values.length)
                average += values[n];
            average /= values.length;
            var overlay = 'avg ' + average;
            ImGui.plotLinesEx('Lines', values, valuesOffset, overlay, -1.0, 1.0, ImVec2.make(0, 80.0));
        }

        // Use functions to generate output (adapted: the getter-callback plot
        // variant needs cross-target callbacks; we generate the samples in a
        // Haxe array instead, same output)
        ImGui.separatorText('Functions');
        ImGui.setNextItemWidth(ImGui.getFontSize() * 8);
        ImGui.combo('func', funcType, 'Sin\x00Saw\x00');
        ImGui.sameLine();
        ImGui.sliderInt('Sample count', displayCount, 1, 400);
        funcValues.resize(displayCount);
        for (i in 0...displayCount)
            funcValues[i] = funcType == 0 ? Math.sin(i * 0.1) : ((i & 1) != 0 ? 1.0 : -1.0);
        ImGui.plotLinesEx('Lines##2', funcValues, 0, null, -1.0, 1.0, ImVec2.make(0, 80));
        ImGui.plotHistogramEx('Histogram##2', funcValues, 0, null, -1.0, 1.0, ImVec2.make(0, 80));

        ImGui.treePop();

    }

}
