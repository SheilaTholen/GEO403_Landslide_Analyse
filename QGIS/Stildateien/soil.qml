<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" version="3.22.6-Białowieża" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" minScale="1e+08">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal mode="0" fetchMode="0" enabled="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <Option type="Map">
      <Option name="WMSBackgroundLayer" value="false" type="bool"/>
      <Option name="WMSPublishDataSourceUrl" value="false" type="bool"/>
      <Option name="embeddedWidgets/count" value="0" type="int"/>
      <Option name="identify/format" value="Value" type="QString"/>
    </Option>
  </customproperties>
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option name="name" value="" type="QString"/>
      <Option name="properties"/>
      <Option name="type" value="collection" type="QString"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling zoomedInResamplingMethod="nearestNeighbour" enabled="false" zoomedOutResamplingMethod="nearestNeighbour" maxOversampling="2"/>
    </provider>
    <rasterrenderer opacity="1" type="paletted" alphaBand="-1" nodataColor="" band="1">
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
        <paletteEntry label="Keine Daten" value="1" color="#bdcccb" alpha="255"/>
        <paletteEntry label="Wasser" value="2" color="#071bf5" alpha="255"/>
        <paletteEntry label="Ferrasol" value="3" color="#3dc9bb" alpha="255"/>
        <paletteEntry label="Fluvisol" value="4" color="#f18552" alpha="255"/>
        <paletteEntry label="Gleysol" value="5" color="#71c1dc" alpha="255"/>
        <paletteEntry label="Leptosol" value="6" color="#3feabc" alpha="255"/>
        <paletteEntry label="Luvisol" value="7" color="#efc6a0" alpha="255"/>
        <paletteEntry label="Nitisol" value="8" color="#dfef4d" alpha="255"/>
        <paletteEntry label="Arenosol" value="9" color="#9279ed" alpha="255"/>
        <paletteEntry label="Acrisol" value="10" color="#7bb659" alpha="255"/>
        <paletteEntry label="Solonchaks" value="11" color="#f18e15" alpha="255"/>
      </colorPalette>
      <colorramp name="[source]" type="randomcolors">
        <Option/>
      </colorramp>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0" gamma="1"/>
    <huesaturation colorizeStrength="100" saturation="0" colorizeRed="255" colorizeOn="0" grayscaleMode="0" colorizeGreen="128" invertColors="0" colorizeBlue="128"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
