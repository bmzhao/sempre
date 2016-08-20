#!/usr/bin/env bash

java -cp libsempre/*:lib/* -ea -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005 edu.stanford.nlp.sempre.Main -Main.interactive