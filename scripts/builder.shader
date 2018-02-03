models/players/builder/shell
{
	qer_editorimage models/players/builder/granger_d
	diffuseMap  models/players/builder/granger_d
	normalMap   models/players/builder/granger_n
	specularMap models/players/builder/granger_s
	cull none
}

//   same textures; shell has culling disabled
models/players/builder/skin
{
	qer_editorimage models/players/builder/granger_d
	diffuseMap  models/players/builder/granger_d
	normalMap   models/players/builder/granger_n
	{
		stage specularMap
		map models/players/builder/granger_s
		specularExponentMin 0
		specularExponentMax 128
	}
}
