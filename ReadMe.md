# Cypress Design System

## Usage

### See the docs

The storybooks on this repo are published after any commit to the main branch to

https://cypress-design.vercel.app

### Install windicss

First install the css package

```bash
npm install -g @cypress-design/css
```

Then, add the plugins to your bundler

```js
// webpack.config.js
import { CyCSSWebpackPlugin } from '@cypress-design/css';

export default (config) => ({
  // the rest of the webpack config...
  plugins: [
    //...
    CyCSSWebpackPlugin(),
  ],
});
```

See [the css package ReadMe](./css/) for more options

### Install each component independently

To make sure each component fix is never blocked by an ongoing refactoring, we decided to publish each component as its own package.

If you want to install the Cypress Button, run

```bash
npm install @cypress-design/vue-button
```

At Cypress, we prefer using Vuejs to build new apps.

Since some projects at Cypress already use React as a framework, we decided to still publish each component as a react version and a vue version.

If you want to install the Cypress Button, and your project still uses React, install the react version

```bash
npm install @cypress-design/react-button
```

See [the component ReadMe](./components/) for the list of available components and [the docs](https://cypress-design.vercel.app) for their usage

## Contributing

### Running storybook

Open all the storybooks with this command

```bash
yarn start
```

This will start all 3 storybooks.

There are 3 storybooks running on this repo.

- [Intro](./storybook/intro/), contains all the common facts Colors, voice & tone, contrast information and how to use the component libraries
- [React](./storybook/react/), contains all the components usable in a react app
- [Vue](./storybook/vue/), documents the same components in a vue app

The 3 storybooks are linked using [storybook composition](https://storybook.js.org/docs/react/sharing/storybook-composition).

If you only want to run vue storybook, run the command below. Use the same fashion if you want to only run react.

```bash
yarn start:vue
```

### Create a new component

Using [hygen](https://hygen.io) we can scaffold all the tooling needed for a new components.

To start writing a new component, run this command:

```bash
yarn new:component
```

The system will ask you to provide the name of the component and generate all the files needed to start writing it.

In the new directory, you will find a React and a Vuejs version to complete. Each framework folder will also contain a stories file.

### Updating the generators

First create a scaffold for a component called ComponentName. The name matters because it will be used to generate the component templates and overwrite the old ones.

```bash
yarn new:component --name ComponentName
```

Then do all the changes you want to make to the component template.

Every time you use `ComponentName` in this template, it will be replaced in generated scaffolding.

Finally, to finalize the changes to the template, run

```bash
rm -rf _templates/component/new/*.ejs.t
npx hygen-create remove components/ComponentName
npx hygen-create add components/ComponentName
npx hygen-create generate
rm -rf components/ComponentName
```

Finally, you should see the `prompt.js` file has been moved. Revert that change before committing.

### Running tests

No tests have been implemented yet

## Structure

- [components](./components/) A collection of components for building Cypress applications and websites.
- [css](./css/) What you need to install a pre-configured version of WindiCSS in a Cypress project.
- [storybook-vue](./storybook-vue/) The configuration of a storybook to showcase and work on the vue components.
- [storybook-react](./storybook-react/) The same as above but for React components.
