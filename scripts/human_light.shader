// ------------
// LIGHT ARMOUR
// ------------

models/players/human_light/armor
{
	qer_editorImage models/players/human_light/armour_d
	cull none
	imageMinDimension 128
	{
		diffuseMap models/players/human_light/armour_d
		normalMap models/players/human_light/armour_n
		specularMap models/players/human_light/armour_s
	}
}

models/players/human_light/body
{
	qer_editorImage models/players/human_nobsuit_common/base_d
	imageMinDimension 128
	{
		diffuseMap models/players/human_nobsuit_common/base_d
		normalMap models/players/human_nobsuit_common/base_n
		specularMap models/players/human_nobsuit_common/base_s
	}
}

models/players/human_light/head
{
	qer_editorImage models/players/human_naked/head_d
	surfaceparm nodraw
	imageMinDimension 128
	{
		diffuseMap models/players/human_naked/head_d
	}
}

models/players/human_light/helmet
{
	qer_editorImage models/players/human_light/helmet_d
	imageMinDimension 128
	{
		diffuseMap models/players/human_light/helmet_d
		normalMap models/players/human_light/helmet_n
		specularMap models/players/human_light/helmet_s
		glowMap models/players/human_light/helmet_a
	}
}
