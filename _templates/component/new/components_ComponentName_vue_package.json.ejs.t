---
to: components/<%= h.inflection.camelize(name, false) %>/vue/package.json
---
{
  "name": "@cypress-design/vue-<%= name.toLowerCase() %>",
  "version": "0.0.0",
  "files": [
    "*"
  ],
  "typings": "./dist/vue/index.d.ts",
  "module": "./dist/index.es.mjs",
  "main": "./dist/index.umd.js",
  "exports": {
    ".": {
      "import": "./dist/index.es.mjs",
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