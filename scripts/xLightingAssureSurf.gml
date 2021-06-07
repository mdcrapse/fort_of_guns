///xLightingAssureSurf()
/// Makes sure the lighting surface exists.

if !surface_exists(global._lighting_surf) {
    global._lighting_surf = surface_create(
        global._lighting_w,
        global._lighting_h,
    );
}

