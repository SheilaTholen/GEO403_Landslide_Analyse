<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" minScale="1e+08" hasScaleBasedVisibilityFlag="0" maxScale="0" version="3.22.6-Białowieża">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal mode="0" enabled="0" fetchMode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <Option type="Map">
      <Option name="WMSBackgroundLayer" type="bool" value="false"/>
      <Option name="WMSPublishDataSourceUrl" type="bool" value="false"/>
      <Option name="embeddedWidgets/count" type="int" value="0"/>
      <Option name="identify/format" type="QString" value="Value"/>
    </Option>
  </customproperties>
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option name="name" type="QString" value=""/>
      <Option name="properties"/>
      <Option name="type" type="QString" value="collection"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling maxOversampling="2" enabled="false" zoomedInResamplingMethod="nearestNeighbour" zoomedOutResamplingMethod="nearestNeighbour"/>
    </provider>
    <rasterrenderer opacity="1" type="paletted" alphaBand="-1" band="1" nodataColor="">
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
        <paletteEntry alpha="255" color="#8cbfc7" label="Flach" value="0"/>
        <paletteEntry alpha="255" color="#ea643f" label="N" value="2"/>
        <paletteEntry alpha="255" color="#fdae61" label="NO" value="3"/>
        <paletteEntry alpha="255" color="#fed790" label="O" value="4"/>
        <paletteEntry alpha="255" color="#ffffbf" label="SO" value="5"/>
        <paletteEntry alpha="255" color="#d5eeb2" label="S" value="6"/>
        <paletteEntry alpha="255" color="#abdda4" label="SW" value="7"/>
        <paletteEntry alpha="255" color="#6bb0af" label="W" value="8"/>
        <paletteEntry alpha="255" color="#2b83ba" label="NW" value="9"/>
      </colorPalette>
      <colorramp name="[source]" type="gradient">
        <Option type="Map">
          <Option name="color1" type="QString" value="215,25,28,255"/>
          <Option name="color2" type="QString" value="43,131,186,255"/>
          <Option name="discrete" type="QString" value="0"/>
          <Option name="rampType" type="QString" value="gradient"/>
          <Option name="stops" type="QString" value="0.25;253,174,97,255:0.5;255,255,191,255:0.75;171,221,164,255"/>
        </Option>
        <prop k="color1" v="215,25,28,255"/>
        <prop k="color2" v="43,131,186,255"/>
        <prop k="discrete" v="0"/>
        <prop k="rampType" v="gradient"/>
        <prop k="stops" v="0.25;253,174,97,255:0.5;255,255,191,255:0.75;171,221,164,255"/>
      </colorramp>
    </rasterrenderer>
    <brightnesscontrast gamma="1" contrast="0" brightness="0"/>
    <huesaturation saturation="0" colorizeGreen="128" colorizeStrength="100" grayscaleMode="0" colorizeBlue="128" colorizeRed="255" invertColors="0" colorizeOn="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
