all: selenium.sh

selenium.sh: iedoc.xml iedoc2bash.xml
	java -jar saxon9he.jar iedoc.xml iedoc2bash.xml > selenium.sh
	chmod 755 selenium.sh

iedoc.xml:
	wget -c 'http://selenium.googlecode.com/svn/trunk/ide/main/src/content/selenium-core/iedoc.xml'
