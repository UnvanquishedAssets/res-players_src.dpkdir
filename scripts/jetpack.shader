models/players/human_base/jetpack
{
	qer_editorImage models/players/human_base/jetpack
	imageMinDimension 128
	{
		diffuseMap models/players/human_base/jetpack
		normalMap models/players/human_base/jetpack_n
		specularMap models/players/human_base/jetpack_s
	}
}

gfx/players/human_base/jetpack_smoke
{
	cull none
	entityMergable
	imageMinDimension 128
	{
		map gfx/players/human_base/jetpack_smoke
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}
