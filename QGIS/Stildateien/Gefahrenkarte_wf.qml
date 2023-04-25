<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.6-Białowieża" minScale="1e+08" hasScaleBasedVisibilityFlag="0" maxScale="0" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal fetchMode="0" mode="0" enabled="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <Option type="Map">
      <Option type="bool" name="WMSBackgroundLayer" value="false"/>
      <Option type="bool" name="WMSPublishDataSourceUrl" value="false"/>
      <Option type="int" name="embeddedWidgets/count" value="0"/>
      <Option type="QString" name="identify/format" value="Value"/>
    </Option>
  </customproperties>
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option type="QString" name="name" value=""/>
      <Option name="properties"/>
      <Option type="QString" name="type" value="collection"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling zoomedInResamplingMethod="nearestNeighbour" zoomedOutResamplingMethod="nearestNeighbour" maxOversampling="2" enabled="false"/>
    </provider>
    <rasterrenderer alphaBand="-1" nodataColor="" band="1" opacity="1" classificationMin="-49.97259939312935" classificationMax="39.70959856338799" type="singlebandpseudocolor">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>MinMax</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader clip="0" labelPrecision="4" minimumValue="-49.97259939312935" colorRampType="DISCRETE" classificationMode="3" maximumValue="39.709598563387992">
          <colorramp type="gradient" name="[source]">
            <Option type="Map">
              <Option type="QString" name="color1" value="5,90,164,255"/>
              <Option type="QString" name="color2" value="201,0,0,255"/>
              <Option type="QString" name="discrete" value="0"/>
              <Option type="QString" name="rampType" value="gradient"/>
              <Option type="QString" name="stops" value="0.255064;5,90,164,255:0.351989;15,166,225,255:0.403214;77,230,247,255:0.445398;255,225,28,255:0.491731;254,99,31,255"/>
            </Option>
            <prop v="5,90,164,255" k="color1"/>
            <prop v="201,0,0,255" k="color2"/>
            <prop v="0" k="discrete"/>
            <prop v="gradient" k="rampType"/>
            <prop v="0.255064;5,90,164,255:0.351989;15,166,225,255:0.403214;77,230,247,255:0.445398;255,225,28,255:0.491731;254,99,31,255" k="stops"/>
          </colorramp>
          <item label="Sehr niedrig" color="#055aa4" alpha="255" value="-27.09792455443783"/>
          <item label="Niedrig" color="#0fa6e1" alpha="255" value="-18.405411666274574"/>
          <item label="Moderat" color="#4de6f7" alpha="255" value="-13.811517405062105"/>
          <item label="Hoch" color="#ffe11c" alpha="255" value="-10.02831247863729"/>
          <item label="Sehr hoch" color="#fe631f" alpha="255" value="-5.87310323328613"/>
          <item label="Extrem hoch" color="#c90000" alpha="255" value="inf"/>
          <rampLegendSettings direction="0" maximumLabel="" orientation="2" useContinuousLegend="1" suffix="" minimumLabel="" prefix="">
            <numericFormat id="basic">
              <Option type="Map">
                <Option type="QChar" name="decimal_separator" value=""/>
                <Option type="int" name="decimals" value="6"/>
                <Option type="int" name="rounding_type" value="0"/>
                <Option type="bool" name="show_plus" value="false"/>
                <Option type="bool" name="show_thousand_separator" value="true"/>
                <Option type="bool" name="show_trailing_zeros" value="false"/>
                <Option type="QChar" name="thousand_separator" value=""/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="0" gamma="1" brightness="0"/>
    <huesaturation colorizeRed="255" colorizeBlue="128" invertColors="0" colorizeGreen="128" grayscaleMode="0" saturation="0" colorizeOn="0" colorizeStrength="100"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
