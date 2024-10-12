# Human Male

This contains the human blend including poses for the new weapons.

## Exporting

1. Install this IQM exporter: https://github.com/DolceTriade/blender_iqm_export
2. Enable the extension.
3. Open `human_male.blend`
4. Press `A` to select all.
5. Go to File -> Import/Export -> Export as IQM
6. Run `cat animations.txt | tr -s '\n' ','` to get animations. Paste it into the animations box
7. Change the shader name to `material`
8. Export as `human_male.iqe`
9. Run Urcheon to generate the IQM.

