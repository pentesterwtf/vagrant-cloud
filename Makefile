all: dgo-*
dgo: dgo-*

dgo-* : FORCE
	cd $@ && tar cvzf $@.box ./metadata.json ./Vagrantfile
	cd $@ && vagrant box add $@.box --name $@ --force


FORCE :

clean : 
	rm -f */*.box
	rm -rf */.vagrant
