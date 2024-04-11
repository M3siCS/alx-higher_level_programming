#!/usr/bin/node
const argsLength = process.argv.length;
console.log(argsLength === 1 ? 'No argument' : argsLength === 2 ? 'Argument found' : 'Argument found');
