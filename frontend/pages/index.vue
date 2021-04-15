<template>
  <div class="home">
    <h1>Home Page</h1>
    <div v-for="(item, index) in state.items" :key="index">
      <p>id: {{ item.id }}</p>
      <p>access_token: {{ item.access_token }}</p>
      <p>refresh_token: {{ item.refresh_token }}</p>
      <p>expires_token: {{ item.expires_token }}</p>
      <p>account_id: {{ item.account_id }}</p>
      <p>JSON: {{ item }}</p>
      <p>--------------------</p>
    </div>
    <!-- <p>BFF: {{ state.msg }}</p> -->
  </div>
</template>

<script>
import { defineComponent, reactive, onMounted } from "@vue/composition-api";
import axios from "axios";

export default defineComponent({
  setup() {
    const state = reactive({
      items: {}
    });
    onMounted(async () => {
      const res = await axios.get(process.env.BACKEND_BASE_URL + "/v1/users");
      state.items = res.data.data;
    });
    // const state = reactive({
    //   msg: "",
    // });
    // onMounted(async () => {
    //   const res = await axios.get(baseUrl + "/api/v1/hello");
    //   state.msg = res.data;
    // });
    return { state };
  }
});
</script>
