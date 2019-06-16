all: output/t-main.stl output/t-infill.stl output/t-blocker.stl output/t-text.stl output/b-main.stl output/b-infill.stl

output/t-main.stl: gehause.scad
	openscad -o $@ -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad
	@echo $@ done

output/t-infill.stl: gehause.scad
	openscad -o $@ -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad
	@echo $@ done

output/t-blocker.stl: gehause.scad
	openscad -o $@ -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad
	@echo $@ done

output/t-text.stl: gehause.scad
	openscad -o $@ -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad
	@echo $@ done

output/b-main.stl: gehause.scad
	openscad -o $@ -D mode='[0,0,0,0,1]' -D '$$fn = 96' gehause.scad
	@echo $@ done

output/b-infill.stl: gehause.scad
	openscad -o $@ -D mode='[0,0,0,0,0,1]' -D '$$fn = 96' gehause.scad
	@echo $@ done




