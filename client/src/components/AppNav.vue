<template>
    <div class="relative bg-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6">
            <div class="flex justify-between items-center border-b-2 border-gray-100 py-6 md:justify-start md:space-x-10">
                <div class="flex justify-start lg:w-0 lg:flex-1">
                    <a href="/">
                        <span class="block text-center text-4xl sm:text-4xl leading-10 font-extrabold tracking-tight text-gray-900 ">
                            SW
                        </span>
                    </a>
                </div>

                <nav class="flex space-x-10">
                    <router-link :to="{ name: 'home' }" class="text-base font-medium text-gray-500 hover:text-gray-900">
                        Home
                    </router-link>
                    <router-link :to="{ name: 'peoples' }" class="text-base font-medium text-gray-500 hover:text-gray-900">
                        People
                    </router-link>
                </nav>
           <div class="hidden md:flex items-center justify-end md:flex-1 lg:w-0">
            </div>
            </div>
        </div>
    </div>
</template>

<script>

</script>
