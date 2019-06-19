main: output/t-main.stl output/t-infill.stl output/t-blocker.stl output/t-text.stl output/b-main.stl output/b-infill.stl preview.png

corner: output/co-t-main.stl output/co-t-infill.stl output/co-t-blocker.stl output/co-t-text.stl output/co-b-main.stl output/co-b-infill.stl

all: main corner

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

preview.png: 
	openscad -o preview.png -D mode='[1,0,0,1,1,0]' -D '$$fn = 96' gehause.scad


output/co-t-main.stl: gehause.scad
	openscad -o $@ -D cornerOnly=1 -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad
	@echo $@ done

output/co-t-infill.stl: gehause.scad
	openscad -o $@ -D cornerOnly=1 -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad
	@echo $@ done

output/co-t-blocker.stl: gehause.scad
	openscad -o $@ -D cornerOnly=1 -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad
	@echo $@ done

output/co-t-text.stl: gehause.scad
	openscad -o $@ -D cornerOnly=1 -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad
	@echo $@ done

output/co-b-main.stl: gehause.scad
	openscad -o $@ -D cornerOnly=1 -D mode='[0,0,0,0,1]' -D '$$fn = 96' gehause.scad
	@echo $@ done

output/co-b-infill.stl: gehause.scad
	openscad -o $@ -D cornerOnly=1 -D mode='[0,0,0,0,0,1]' -D '$$fn = 96' gehause.scad
	@echo $@ done
