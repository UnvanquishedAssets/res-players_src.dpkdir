models/players/human_base/jetpack
{
	qer_editorImage models/players/human_base/jetpack_d
	{
		diffuseMap  models/players/human_base/jetpack_d
		normalMap   models/players/human_base/jetpack_n
		specularMap models/players/human_base/jetpack_s
	}
}

gfx/players/human_base/jetpack_smoke
{
	cull none
	entityMergable
	{
		map gfx/players/human_base/jetpack_smoke
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen    vertex
		alphaGen  vertex
	}
}
