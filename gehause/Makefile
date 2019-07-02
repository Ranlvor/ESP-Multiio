main: output/t-main.stl output/t-infill.stl output/t-blocker.stl output/t-text.stl output/b-main.stl output/b-infill.stl preview.png

corner: output/co-t-main.stl output/co-t-infill.stl output/co-t-blocker.stl output/co-t-text.stl output/co-b-main.stl output/co-b-infill.stl

main_flat: output/flat-t-main.stl output/flat-t-infill.stl output/flat-t-blocker.stl output/flat-t-text.stl output/flat-b-main.stl output/flat-b-infill.stl flat-preview.png

corner_flat: output/flat-co-t-main.stl output/flat-co-t-infill.stl output/flat-co-t-blocker.stl output/flat-co-t-text.stl output/flat-co-b-main.stl output/flat-co-b-infill.stl

all: main corner main_flat corner_flat

output/t-main.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/t-infill.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/t-blocker.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/t-text.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/b-main.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D mode='[0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/b-infill.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D mode='[0,0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

preview.png: 
	openscad -o $@ -D flatMode=0 -D mode='[1,0,0,1,1,0]' -D '$$fn = 96' gehause.scad || true


output/co-t-main.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/co-t-infill.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/co-t-blocker.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/co-t-text.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/co-b-main.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/co-b-infill.stl: gehause.scad
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[0,0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done





output/flat-t-main.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-t-infill.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-t-blocker.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-t-text.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-b-main.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D mode='[0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-b-infill.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D mode='[0,0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

flat-preview.png: 
	openscad -o $@ -D flatMode=1 -D mode='[1,0,0,1,1,0]' -D '$$fn = 96' gehause.scad || true


output/flat-co-t-main.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-co-t-infill.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-co-t-blocker.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-co-t-text.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-co-b-main.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-co-b-infill.stl: gehause.scad
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[0,0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done
