import Checkbox from './Checkbox.vue';

export default {
  title: 'Vue/Checkbox',
  component: Checkbox,
};

export const Sample = () => (
  <div class="p-4">
    <Checkbox label="Sample" id="sample" modelValue={true} />
  </div>
);
