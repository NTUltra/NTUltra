//
// Set all colours to white but keep the alpha the same
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 theColour = vec4(0.35, 1.0, 0.0, texture2D( gm_BaseTexture, v_vTexcoord ).a);
    gl_FragColor = theColour;
}