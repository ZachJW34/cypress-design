---
to: components/<%= h.inflection.camelize(name, false) %>/vue/<%= h.inflection.camelize(name, false) %>.cy.tsx
---
/// <reference types="cypress" />
import { mount } from 'cypress/vue';
import <%= h.inflection.camelize(name, false) %> from './<%= h.inflection.camelize(name, false) %>.vue';

describe('<<%= h.inflection.camelize(name, false) %> />', () => {
  it('renders', () => {
    mount(() => {
      return <<%= h.inflection.camelize(name, false) %> label="Welcome guide settings" id="welcome-opt-out" />
    });
  });
});
