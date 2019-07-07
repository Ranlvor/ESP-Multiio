main: output/t-main.stl output/t-infill.stl output/t-blocker.stl output/t-text.stl output/b-main.stl output/b-infill.stl preview.png

corner: output/co-t-main.stl output/co-t-infill.stl output/co-t-blocker.stl output/co-t-text.stl output/co-b-main.stl output/co-b-infill.stl

main_flat: output/flat-t-main.stl output/flat-t-infill.stl output/flat-t-blocker.stl output/flat-t-text.stl output/flat-b-main.stl output/flat-b-infill.stl flat-preview.png

corner_flat: output/flat-co-t-main.stl output/flat-co-t-infill.stl output/flat-co-t-blocker.stl output/flat-co-t-text.stl output/flat-co-b-main.stl output/flat-co-b-infill.stl

cut_files: cuts/combined-1.png cuts/combined-2.png cuts/combined-3.png cuts/flat-combined-1.png cuts/flat-combined-2.png cuts/flat-combined-3.png

all: main corner main_flat corner_flat cut_files

output/t-main.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/t-infill.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/t-blocker.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/t-text.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/b-main.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D mode='[0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/b-infill.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D mode='[0,0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

preview.png: gehause.scad 
	openscad -o $@ -D flatMode=0 -D mode='[1,0,0,1,1,0]' -D '$$fn = 96' gehause.scad || true


output/co-t-main.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/co-t-infill.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/co-t-blocker.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/co-t-text.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/co-b-main.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/co-b-infill.stl: gehause.scad output
	openscad -o $@ -D flatMode=0 -D cornerOnly=1 -D mode='[0,0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done





output/flat-t-main.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-t-infill.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-t-blocker.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-t-text.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-b-main.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D mode='[0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-b-infill.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D mode='[0,0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

flat-preview.png: gehause.scad
	openscad -o $@ -D flatMode=1 -D mode='[1,0,0,1,1,0]' -D '$$fn = 96' gehause.scad || true


output/flat-co-t-main.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[1,0,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-co-t-infill.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[0,1,0,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-co-t-blocker.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[0,0,1,0]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-co-t-text.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-co-b-main.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output/flat-co-b-infill.stl: gehause.scad output
	openscad -o $@ -D flatMode=1 -D cornerOnly=1 -D mode='[0,0,0,0,0,1]' -D '$$fn = 96' gehause.scad || true
	@echo $@ done

output:
	mkdir output

cuts:
	mkdir cuts

cuts/flat-top-1.png: gehause.scad cuts
	openscad -o $@ -D flatMode=1 -D cutMode=1 -D mode='[1,0,0,0]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/flat-top-2.png: gehause.scad cuts
	openscad -o $@ -D flatMode=1 -D cutMode=2 -D mode='[1,0,0,0]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/flat-top-3.png: gehause.scad cuts
	openscad -o $@ -D flatMode=1 -D cutMode=3 -D mode='[1,0,0,0]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/flat-bottom-1.png: gehause.scad cuts
	openscad -o $@ -D flatMode=1 -D cutMode=1 -D mode='[0,0,0,0,1]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/flat-bottom-2.png: gehause.scad cuts
	openscad -o $@ -D flatMode=1 -D cutMode=2 -D mode='[0,0,0,0,1]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/flat-bottom-3.png: gehause.scad cuts
	openscad -o $@ -D flatMode=1 -D cutMode=3 -D mode='[0,0,0,0,1]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/top-1.png: gehause.scad cuts
	openscad -o $@ -D flatMode=0 -D cutMode=1 -D mode='[1,0,0,0]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/top-2.png: gehause.scad cuts
	openscad -o $@ -D flatMode=0 -D cutMode=2 -D mode='[1,0,0,0]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/top-3.png: gehause.scad cuts
	openscad -o $@ -D flatMode=0 -D cutMode=3 -D mode='[1,0,0,0]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/bottom-1.png: gehause.scad cuts
	openscad -o $@ -D flatMode=0 -D cutMode=1 -D mode='[0,0,0,0,1]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/bottom-2.png: gehause.scad cuts
	openscad -o $@ -D flatMode=0 -D cutMode=2 -D mode='[0,0,0,0,1]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/bottom-3.png: gehause.scad cuts
	openscad -o $@ -D flatMode=0 -D cutMode=3 -D mode='[0,0,0,0,1]' -D '$$fn = 96' --camera=0,0,0,0,0,0,150 --projection=o --imgsize=1920,1080 gehause.scad
	echo $@ done

cuts/combined-1.png: cuts/top-1.png cuts/bottom-1.png
	convert cuts/bottom-1.png -transparent '#ffffe5' -negate -alpha set -channel A -evaluate Multiply 0.75 +channel "(" cuts/top-1.png -transparent '#ffffe5' -channel A -evaluate Multiply 0.75 +channel ")" -composite -flatten $@

cuts/combined-2.png: cuts/top-2.png cuts/bottom-2.png
	convert cuts/bottom-2.png -transparent '#ffffe5' -negate -alpha set -channel A -evaluate Multiply 0.75 +channel "(" cuts/top-2.png -transparent '#ffffe5' -channel A -evaluate Multiply 0.75 +channel ")" -composite -flatten $@

cuts/combined-3.png: cuts/top-3.png cuts/bottom-3.png
	convert cuts/bottom-3.png -transparent '#ffffe5' -negate -alpha set -channel A -evaluate Multiply 0.75 +channel "(" cuts/top-3.png -transparent '#ffffe5' -channel A -evaluate Multiply 0.75 +channel ")" -composite -flatten $@

cuts/flat-combined-1.png: cuts/flat-top-1.png cuts/flat-bottom-1.png
	convert cuts/flat-bottom-1.png -transparent '#ffffe5' -negate -alpha set -channel A -evaluate Multiply 0.75 +channel "(" cuts/flat-top-1.png -transparent '#ffffe5' -channel A -evaluate Multiply 0.75 +channel ")" -composite -flatten $@

cuts/flat-combined-2.png: cuts/flat-top-2.png cuts/flat-bottom-2.png
	convert cuts/flat-bottom-2.png -transparent '#ffffe5' -negate -alpha set -channel A -evaluate Multiply 0.75 +channel "(" cuts/flat-top-2.png -transparent '#ffffe5' -channel A -evaluate Multiply 0.75 +channel ")" -composite -flatten $@

cuts/flat-combined-3.png: cuts/flat-top-3.png cuts/flat-bottom-3.png
	convert cuts/flat-bottom-3.png -transparent '#ffffe5' -negate -alpha set -channel A -evaluate Multiply 0.75 +channel "(" cuts/flat-top-3.png -transparent '#ffffe5' -channel A -evaluate Multiply 0.75 +channel ")" -composite -flatten $@
