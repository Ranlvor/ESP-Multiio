all: output/main.stl output/infill.stl output/blocker.stl output/text.stl

output/main.stl: gehause.scad
	openscad -o $@ -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad
	echo $@ done

output/infill.stl: gehause.scad
	openscad -o $@ -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad
	echo $@ done

output/blocker.stl: gehause.scad
	openscad -o $@ -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad
	echo $@ done

output/text.stl: gehause.scad
	openscad -o $@ -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad
	echo $@ done



