<template>
  <div id="employee-table">
    <p v-if="employees.length < 1" class="empty-table">No employees</p>
    <table v-else>
      <thead>
        <tr>
          <th>Employee name</th>
          <th>Employee email</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="employee in employees" :key="employee.id">
          <td v-if="editing === employee.id">
            <input v-model="employee.name" type="text"/>
          </td>
          <td v-else>{{ employee.name }}</td>
          <td v-if="editing === employee.id">
            <input v-model="employee.email" type="text"/>
          </td>
          <td v-else>{{ employee.email }}</td>
          <td v-if="editing === employee.id">
            <button @click="editEmployee(employee)">Save</button>
            <button @click="cancelEdit(employee)">Cancel</button>
          </td>
          <td v-else>
            <button @click="editMode(employee)">Edit</button>
            <button @click="$emit('delete:employ', employee.id)">Delete</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
  export default {
    name: 'employee-table',
    props: {
      employees: Array,
    },
    data() {
      return {
        editing: null,
      }
    },
    methods: {
      editMode(employee) {
        this.cachedEmployee = Object.assign({},employee)
        this.editing = employee.id
      },
      editEmployee(employee){
        if(employee.name === '' || employee.email === '') return
        this.$emit('edit:employee',employee.id, employee)
        this.editing = null
      },
      cancelEdit(employee) {
        Object.assign(employee, this.cachedEmployee)
        this.editing = null
      }
    }
  }
</script>

<style scoped>
  button {
    margin: 0 0.5rem 0 0;
  }
</style>