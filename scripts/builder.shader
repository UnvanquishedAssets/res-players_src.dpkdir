models/players/builder/shell
{
	qer_editorImage models/players/builder/granger_d
	cull none
	imageMinDimension 128
	{
		diffuseMap models/players/builder/granger_d
		normalMap models/players/builder/granger_n
		specularMap models/players/builder/granger_s
	}
}

// same textures; shell has culling disabled
models/players/builder/skin
{
	qer_editorImage models/players/builder/granger_d
	imageMinDimension 128
	{
		diffuseMap models/players/builder/granger_d
		normalMap models/players/builder/granger_n
		specularMap models/players/builder/granger_s
		specularExponentMin 0
		specularExponentMax 128
	}
}
