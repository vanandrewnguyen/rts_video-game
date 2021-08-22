///scrShakeCam(mag);
/* Apply Camera Shake */

if instance_exists(oCamera) {
    // Limit the shake below 5 pixels either side
    if (oCamera.mag <= 5) {
        oCamera.mag += argument0;
    }
}
