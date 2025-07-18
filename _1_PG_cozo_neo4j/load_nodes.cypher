LOAD CSV WITH HEADERS FROM "file:///PERSON.xls" AS csvLine
CREATE (n:PERSON { id: toInteger(csvLine.id_n), firstName: csvLine.firstName, lastName: csvLine.lastName, gender: csvLine.gender, birthday: csvLine.birthday, creationDate: csvLine.creationDate, locationIP: csvLine.locationIP, browserUsed: csvLine.browserUsed });

LOAD CSV WITH HEADERS FROM "file:///PLACE.xls" AS csvLine
CREATE (n:PLACE { id: toInteger(csvLine.id_n), type: csvLine.type, name: csvLine.name, url: csvLine.url });

LOAD CSV WITH HEADERS FROM "file:///ORGANISATION.xls" AS csvLine
CREATE (n:ORGANISATION { id: toInteger(csvLine.id_n), type: csvLine.type, name: csvLine.name, url: csvLine.url });

LOAD CSV WITH HEADERS FROM "file:///POST.xls" AS csvLine
CREATE (n:POST { id: toInteger(csvLine.id_n), imageFile: csvLine.imageFile, creationDate: csvLine.creationDate, locationIP: csvLine.locationIP, browserUsed: csvLine.browserUsed, content: csvLine.content, length: csvLine.length });

LOAD CSV WITH HEADERS FROM "file:///COMMENT.xls" AS csvLine
CREATE (n:COMMENT { id: toInteger(csvLine.id_n), creationDate: csvLine.creationDate, locationIP: csvLine.locationIP, browserUsed: csvLine.browserUsed, content: csvLine.content, length: csvLine.length });

LOAD CSV WITH HEADERS FROM "file:///FORUM.xls" AS csvLine
CREATE (n:FORUM { id: toInteger(csvLine.id_n), title: csvLine.title, creationDate: csvLine.creationDate });

LOAD CSV WITH HEADERS FROM "file:///TAG.xls" AS csvLine
CREATE (n:TAG { id: toInteger(csvLine.id_n), name: csvLine.name, url: csvLine.url });

LOAD CSV WITH HEADERS FROM "file:///TAGCLASS.xls" AS csvLine
CREATE (n:TAGCLASS { id: toInteger(csvLine.id_n), name: csvLine.name, url: csvLine.url });

LOAD CSV WITH HEADERS FROM "file:///EMAILADDRESS.xls" AS csvLine
CREATE (n:EMAILADDRESS { id: toInteger(csvLine.id_n), email: csvLine.email });

LOAD CSV WITH HEADERS FROM "file:///LANGUAGE.xls" AS csvLine
CREATE (n:LANGUAGE { id: toInteger(csvLine.id_n), name: csvLine.name });

