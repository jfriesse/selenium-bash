all: selenium.sh

selenium.sh: iedoc.xml saxon9he.jar iedoc2bash.xml
	java -jar saxon9he.jar iedoc.xml iedoc2bash.xml > selenium.sh
	chmod 755 selenium.sh

iedoc.xml:
	wget -c 'http://selenium.googlecode.com/svn/trunk/ide/main/src/content/selenium-core/iedoc.xml'

saxon9he.jar:
	@echo "You don't have saxon9he.jar, please download saxon and install jar file to build directory"
	@exit 1

clean:
	rm selenium.sh
