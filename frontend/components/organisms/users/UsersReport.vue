<template>
  <div>
    <h2>UsersReport Component</h2>
    <div class="table">
      <table>
        <thead>
          <tr>
            <th>id</th>
            <th>title</th>
            <th>content</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(report, index) in reports" :key="index">
            <td>{{ report.id }}</td>
            <td>{{ report.title }}</td>
            <td>{{ report.content }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>
<script lang="ts">
import { defineComponent } from "@vue/composition-api";

export default defineComponent({
  props: {
    reports: {
      type: Object,
      default: () => [],
    },
  },
  setup() {
    return {};
  },
});
</script>
