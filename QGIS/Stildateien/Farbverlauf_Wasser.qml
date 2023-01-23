<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+08" version="3.22.6-Białowieża" maxScale="0" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0">
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
      <resampling enabled="false" maxOversampling="2" zoomedInResamplingMethod="nearestNeighbour" zoomedOutResamplingMethod="nearestNeighbour"/>
    </provider>
    <rasterrenderer opacity="1" nodataColor="" alphaBand="-1" band="1" type="paletted">
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
        <paletteEntry color="#093e61" label="0" alpha="255" value="0"/>
        <paletteEntry color="#3e9ac1" label="30" alpha="255" value="30"/>
        <paletteEntry color="#8ae2d8" label="60" alpha="255" value="60"/>
        <paletteEntry color="#b8dab7" label="90" alpha="255" value="90"/>
        <paletteEntry color="#e9f7dc" label="> 90" alpha="255" value="99"/>
      </colorPalette>
      <colorramp name="[source]" type="gradient">
        <Option type="Map">
          <Option value="9,62,97,255" name="color1" type="QString"/>
          <Option value="224,238,212,255" name="color2" type="QString"/>
          <Option value="0" name="discrete" type="QString"/>
          <Option value="gradient" name="rampType" type="QString"/>
          <Option value="0.272506;67,162,202,255:0.492701;123,204,196,255:0.683698;186,228,188,255" name="stops" type="QString"/>
        </Option>
        <prop v="9,62,97,255" k="color1"/>
        <prop v="224,238,212,255" k="color2"/>
        <prop v="0" k="discrete"/>
        <prop v="gradient" k="rampType"/>
        <prop v="0.272506;67,162,202,255:0.492701;123,204,196,255:0.683698;186,228,188,255" k="stops"/>
      </colorramp>
    </rasterrenderer>
    <brightnesscontrast brightness="0" gamma="1" contrast="0"/>
    <huesaturation colorizeRed="255" colorizeGreen="128" colorizeStrength="100" grayscaleMode="0" saturation="0" invertColors="0" colorizeOn="0" colorizeBlue="128"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
