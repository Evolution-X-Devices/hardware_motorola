In order to inherit advanced Moto Gesture config the following lines need to be added to overlay-lineage/lineage-sdk/lineage/res/res/values
/config.xml in device/motorola/common

<!-- Paths to the libraries that contain device specific key handlers -->
    <string-array name="config_deviceKeyHandlerLibs" translatable="false">
        <item>/system/priv-app/MotoActions/MotoActions.apk</item>
    </string-array>
<!-- Names of the key handler classes -->
    <string-array name="config_deviceKeyHandlerClasses" translatable="false">
        <item>com.moto.actions.KeyHandler</item>
    </string-array>
