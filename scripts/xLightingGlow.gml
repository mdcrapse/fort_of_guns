///xLightingGlow(x, y, radius)
/// Draws a light at the specified position.

xLightingAssureSurf();
surface_set_target(global._lighting_surf);
draw_set_blend_mode_ext(bm_zero, bm_inv_src_colour);
draw_circle_colour(argument0, argument1, argument2, c_white, c_white, false);
draw_set_blend_mode(bm_normal); 
surface_reset_target();

