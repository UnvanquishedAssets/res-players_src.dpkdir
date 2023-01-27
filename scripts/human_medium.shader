// -------------
// MEDIUM ARMOUR
// -------------

models/players/human_medium/armor
{
	qer_editorImage models/players/human_medium/armour_d
	cull none
	imageMinDimension 128
	{
		diffuseMap models/players/human_medium/armour_d
		normalMap models/players/human_medium/armour_n
		specularMap models/players/human_medium/armour_s
	}
}

models/players/human_medium/body
{
	qer_editorImage models/players/human_nobsuit_common/base_d
	imageMinDimension 128
	{
		diffuseMap models/players/human_nobsuit_common/base_d
		normalMap models/players/human_nobsuit_common/base_n
		specularMap models/players/human_nobsuit_common/base_s
	}
}

models/players/human_medium/head
{
	qer_editorImage models/players/human_naked/head_d
	surfaceparm nodraw
	imageMinDimension 128
	{
		diffuseMap models/players/human_naked/head_d
	}
}

models/players/human_medium/helmet
{
	qer_editorImage models/players/human_medium/helmet_d
	imageMinDimension 128
	{
		diffuseMap models/players/human_medium/helmet_d
		normalMap models/players/human_medium/helmet_n
		specularMap models/players/human_medium/helmet_s
		glowMap models/players/human_medium/helmet_a
	}
}
