//
// Set all colours to white but keep the alpha the same
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec3 f_colour;
void main()
{
    vec4 theColour = vec4(f_colour, texture2D( gm_BaseTexture, v_vTexcoord ).a);
    gl_FragColor = theColour;
}