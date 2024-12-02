<x-guest-layout>
    <x-authentication-card>
        <x-slot name="logo">
            <div style="padding: 10px; display: flex; align-items: center; justify-content: center;">
                <img src="{{ asset('user/assets/images/login-logo.png') }}" alt="EduPredict Logo"
                    style="height: 50px; width: auto; margin-right: 10px;" />
                <span style="color: #7a6ad8; font-size: 30px; font-weight: 700;">EduPredict</span>
            </div>

        </x-slot>

        <x-validation-errors class="mb-4" />

        @session('status')
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ $value }}
            </div>
        @endsession

        <form method="POST" action="{{ route('login') }}" style="width: 100%;">
            @csrf

            <div>
                <x-label for="email" value="{{ __('Email') }}" />
                <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')"
                    required autofocus autocomplete="username" />
            </div>

            <div class="mt-4">
                <x-label for="password" value="{{ __('Password') }}" />
                <x-input id="password" class="block mt-1 w-full" type="password" name="password" required
                    autocomplete="current-password" />
            </div>

            <div class="flex items-center justify-center mt-4">
                <x-button class="ms-4" style="background-color: #7a6ad8; border-color: #7a6ad8;">
                    {{ __('Log in') }}
                </x-button>
            </div>
        </form>
    </x-authentication-card>
</x-guest-layout>
