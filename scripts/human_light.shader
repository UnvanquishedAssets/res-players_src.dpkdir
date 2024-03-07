// ------------
// LIGHT ARMOUR
// ------------

models/players/human_light/armor
{
	qer_editorImage models/players/human_light/armour
	cull none
	imageMinDimension 128
	{
		diffuseMap models/players/human_light/armour
		normalMap models/players/human_light/armour_n
		specularMap models/players/human_light/armour_s
	}
}

models/players/human_light/body
{
	qer_editorImage models/players/human_nobsuit_common/base
	imageMinDimension 128
	{
		diffuseMap models/players/human_nobsuit_common/base
		normalMap models/players/human_nobsuit_common/base_n
		specularMap models/players/human_nobsuit_common/base_s
	}
}

models/players/human_light/head
{
	qer_editorImage models/players/human_naked/head
	surfaceparm nodraw
	imageMinDimension 128
	{
		diffuseMap models/players/human_naked/head
	}
}

models/players/human_light/helmet
{
	qer_editorImage models/players/human_light/helmet
	imageMinDimension 128
	{
		diffuseMap models/players/human_light/helmet
		normalMap models/players/human_light/helmet_n
		specularMap models/players/human_light/helmet_s
		glowMap models/players/human_light/helmet_a
	}
}
