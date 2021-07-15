///scrShakeCam(mag);
// Apply Camera Shake

if instance_exists(oCamera) {
    if (oCamera.mag <= 5) {
        oCamera.mag += argument0;
    }
}
