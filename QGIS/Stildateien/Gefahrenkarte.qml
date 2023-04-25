<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" styleCategories="AllStyleCategories" version="3.22.6-Białowieża" minScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal enabled="0" fetchMode="0" mode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <Option type="Map">
      <Option value="false" name="WMSBackgroundLayer" type="bool"/>
      <Option value="false" name="WMSPublishDataSourceUrl" type="bool"/>
      <Option value="0" name="embeddedWidgets/count" type="int"/>
      <Option value="Value" name="identify/format" type="QString"/>
    </Option>
  </customproperties>
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option value="" name="name" type="QString"/>
      <Option name="properties"/>
      <Option value="collection" name="type" type="QString"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling maxOversampling="2" zoomedInResamplingMethod="nearestNeighbour" zoomedOutResamplingMethod="nearestNeighbour" enabled="false"/>
    </provider>
    <rasterrenderer band="1" classificationMax="3.999996" nodataColor="" opacity="1" classificationMin="-6" type="singlebandpseudocolor" alphaBand="-1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader minimumValue="-6" maximumValue="3.9999959999999999" labelPrecision="4" classificationMode="1" colorRampType="DISCRETE" clip="0">
          <colorramp name="[source]" type="gradient">
            <Option type="Map">
              <Option value="0,159,32,255" name="color1" type="QString"/>
              <Option value="215,25,28,255" name="color2" type="QString"/>
              <Option value="0" name="discrete" type="QString"/>
              <Option value="gradient" name="rampType" type="QString"/>
              <Option value="0.166667;0,159,32,255:0.25;116,201,149,255:0.25;165,228,170,255:0.333333;211,245,104,255:0.833333;241,89,47,255" name="stops" type="QString"/>
            </Option>
            <prop v="0,159,32,255" k="color1"/>
            <prop v="215,25,28,255" k="color2"/>
            <prop v="0" k="discrete"/>
            <prop v="gradient" k="rampType"/>
            <prop v="0.166667;0,159,32,255:0.25;116,201,149,255:0.25;165,228,170,255:0.333333;211,245,104,255:0.833333;241,89,47,255" k="stops"/>
          </colorramp>
          <item value="-4.333334667314763" color="#009f20" label="Sehr niedrig" alpha="255"/>
          <item value="-3.500002000972145" color="#74c995" label="Niedrig" alpha="255"/>
          <item value="-3.500002000972145" color="#a5e4aa" label="Moderat" alpha="255"/>
          <item value="-2.666669334629526" color="#d3f568" label="Hoch" alpha="255"/>
          <item value="2.33333" color="#f1592f" label="Sehr hoch" alpha="255"/>
          <item value="inf" color="#d7191c" label="Extrem hoch" alpha="255"/>
          <rampLegendSettings maximumLabel="" orientation="2" useContinuousLegend="1" prefix="" direction="0" minimumLabel="" suffix="">
            <numericFormat id="basic">
              <Option type="Map">
                <Option value="" name="decimal_separator" type="QChar"/>
                <Option value="6" name="decimals" type="int"/>
                <Option value="0" name="rounding_type" type="int"/>
                <Option value="false" name="show_plus" type="bool"/>
                <Option value="true" name="show_thousand_separator" type="bool"/>
                <Option value="false" name="show_trailing_zeros" type="bool"/>
                <Option value="" name="thousand_separator" type="QChar"/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="-8" brightness="0" gamma="1"/>
    <huesaturation colorizeGreen="128" colorizeStrength="100" grayscaleMode="0" colorizeRed="255" saturation="0" invertColors="0" colorizeOn="0" colorizeBlue="128"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
