---
to: components/<%= h.inflection.camelize(name, false) %>/vue/package.json
---
{
  "name": "@cypress-design/vue-<%= name.toLowerCase() %>",
  "version": "0.1.0",
  "files": [
    "*"
  ],
  "typings": "./dist/index.d.ts",
  "main": "./dist/index.umd.js",
  "module": "./dist/index.es.js",
  "exports": {
    ".": {
      "import": "./dist/index.es.js",
      "require": "./dist/index.umd.js"
    }
  },
  "scripts": {
    "build": "yarn build:module && yarn build:types",
    "build:module": "yarn vite build",
    "build:types": "yarn vue-tsc --project ./tsconfig.build.json"
  },
  "license": "MIT"
}