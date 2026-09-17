import react from '@vitejs/plugin-react'
import { defineConfig } from 'vite'

// https://vite.dev/config/
export default defineConfig({
  // relative asset paths, so the build works under any sub-path (e.g. https://<user>.github.io/<repo>/)
  base: './',
  plugins: [react()],
})
