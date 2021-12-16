import { ref } from 'vue'
import axios from 'axios'

export default function usePeoples() {
    const peoples = ref([])
    const people = ref([])

    const fetchPeoples = async () => {
        let response = await axios.get('/api/people')
        peoples.value = response.data.data
    }

    const fetchPeople = async (id) => {
        let response = await axios.get(`/api/people/${id}`)
        people.value = response.data.data
    }

    return {
        peoples,
        people,
        fetchPeoples,
        fetchPeople
    }
}
