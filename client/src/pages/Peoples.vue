<template>
    <div class="flex flex-col">
        <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
            <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
                <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
                    <table class="min-w-full divide-y divide-gray-200">
                    <thead class="bg-gray-50">
                        <tr>
                        <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            People
                        </th>
                        <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            Planet
                        </th>
                        <th scope="col" class="relative px-6 py-3">
                            <span class="sr-only">Edit</span>
                        </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="people in peoples" :key="people.id" class="bg-white">
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                                <router-link :to="{ name: 'people', params: { id: people.id } }" class="text-sm font-medium">
                                    {{ people.name }}
                                </router-link>
                                <!-- {{ people.name }} -->
                            </td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                                {{ people.planet.name }}
                            </td>
                        </tr>
                    </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="space-y-16">
        <div class="flex items-baseline sm:justify-between flex-wrap sm:flex-nowrap space-x-0 sm:space-x-6 space-y-3 sm:space-y-0">

        </div>
    </div>
</template>

<script>
import usePeoples from '../api/usePeoples'
import { onMounted } from 'vue'
import { useRouter } from 'vue-router'

export default {
    setup() {
        const { peoples, fetchPeoples } = usePeoples()
        const router = useRouter()

        onMounted(fetchPeoples)

        return {
            peoples,
        }
    },
}
</script>
