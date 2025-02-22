---
to: components/<%= h.inflection.camelize(name, false) %>/react/tsconfig.build.json
---
{
  "extends": "../../../tsconfig.react.build.json",
  "include": ["./<%= h.inflection.camelize(name, false) %>.tsx", "./index.ts", "../constants.ts"],
  "compilerOptions": {
    "outDir": "dist",
    "rootDir": "../"
  }
}
