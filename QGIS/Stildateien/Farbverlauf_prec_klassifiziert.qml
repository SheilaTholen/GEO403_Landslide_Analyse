<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" version="3.22.6-Białowieża" styleCategories="AllStyleCategories" minScale="1e+08" maxScale="0">
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
      <resampling maxOversampling="2" zoomedOutResamplingMethod="nearestNeighbour" zoomedInResamplingMethod="nearestNeighbour" enabled="false"/>
    </provider>
    <rasterrenderer nodataColor="" band="1" alphaBand="-1" type="paletted" opacity="1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <colorPalette>
        <paletteEntry value="1" alpha="255" label="&lt;= 2500" color="#e4fff4"/>
        <paletteEntry value="2" alpha="255" label="2500 - 3000" color="#acdad4"/>
        <paletteEntry value="3" alpha="255" label="3000 - 3500" color="#74b4b4"/>
        <paletteEntry value="4" alpha="255" label="3500 - 4000" color="#3c8f94"/>
        <paletteEntry value="5" alpha="255" label="> 4000" color="#046974"/>
      </colorPalette>
      <colorramp name="[source]" type="gradient">
        <Option type="Map">
          <Option value="228,255,244,255" name="color1" type="QString"/>
          <Option value="4,105,116,255" name="color2" type="QString"/>
          <Option value="0" name="discrete" type="QString"/>
          <Option value="gradient" name="rampType" type="QString"/>
        </Option>
        <prop v="228,255,244,255" k="color1"/>
        <prop v="4,105,116,255" k="color2"/>
        <prop v="0" k="discrete"/>
        <prop v="gradient" k="rampType"/>
      </colorramp>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0" gamma="1"/>
    <huesaturation colorizeStrength="100" colorizeRed="255" invertColors="0" saturation="0" colorizeGreen="128" colorizeBlue="128" colorizeOn="0" grayscaleMode="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
