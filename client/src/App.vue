<template>
    <app-nav />
    <div class="max-w-4xl mx-auto py-20 px-4 sm:px-6 lg:px-8">
        <router-view />
    </div>
</template>

<script>
    import AppNav from './components/AppNav.vue'

    export default {
        components: {
            AppNav
        }
    }
</script>
