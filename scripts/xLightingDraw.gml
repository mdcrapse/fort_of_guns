///xLightingDraw()
/// Draws the lighting for the current room.

xLightingAssureSurf();
draw_set_blend_mode_ext(bm_zero, bm_inv_src_colour);
draw_surface(global._lighting_surf, 0, 0);
draw_set_blend_mode(bm_normal); 

surface_set_target(global._lighting_surf);
draw_clear(c_white);
surface_reset_target();

