# shikshaVault 📚

shikshaVault is a comprehensive digital resource repository built with Laravel, designed to manage and share academic materials seamlessly. It features a robust file management system, integrated PDF viewer, and a structured curriculum management interface.

## ✨ Key Features

- **Resource Management**: Upload, categorize, and manage digital files (PDFs, etc.).
- **Curriculum Structure**: Organize resources by Institutional levels, Program Streams, and Subjects.
- **Integrated PDF Viewer**: View documents directly in the browser with a secure wrapper.
- **Bookmarks & Favorites**: Save important resources for quick access.
- **Admin Dashboard**: Comprehensive tools for managing users, files, and the academic hierarchy.
- **User Profiles**: Track uploads, downloads, and personal activity.
- **Search & Filter**: Easily find resources based on academic levels and fields.

## 🛠️ Tech Stack

- **Backend**: [Laravel 12.x](https://laravel.com)
- **Frontend**: [Livewire 3.x](https://livewire.laravel.com), [Bootstrap 5](https://getbootstrap.com), [Tailwind CSS 4](https://tailwindcss.com)
- **UI Components**: [Tabler](https://tabler.io), [SweetAlert2](https://sweetalert2.github.io), [Dropzone.js](https://www.dropzone.dev)
- **PDF Processing**: [FPDF](http://www.fpdf.org), [FPDI](https://www.setasign.com/products/fpdi/about/), [PDFParser](https://pdfparser.org)
- **Database**: MySQL / SQLite (configurable)

## 🚀 Getting Started

### Prerequisites

- PHP ^8.2
- Composer
- Node.js & NPM
- MySQL or Laragon/XAMPP environment

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/TheRealSamkit/shikshaVault.git
   cd shikshaVault
   ```

2. **Install dependencies**:
   ```bash
   composer install
   npm install
   ```

3. **Environment Setup**:
   ```bash
   cp .env.example .env
   # Update your DB_DATABASE, DB_USERNAME, and DB_PASSWORD in .env
   ```

4. **Generate App Key**:
   ```bash
   php artisan key:generate
   ```

5. **Database Migration**:
   ```bash
   php artisan migrate
   ```

6. **Build Assets**:
   ```bash
   npm run build
   ```

7. **Run the Application**:
   ```bash
   php artisan serve
   ```
   Visit `http://localhost:8000` in your browser.

## 📁 Project Structure

- `app/Models`: Contains the core logic for Academic levels, Programs, Subjects, and Files.
- `app/Http/Controllers`: Handles file uploads, access control, and user profiles.
- `resources/views`: Blade templates for the frontend UI.
- `routes/web.php`: Defines public, authenticated, and admin-only routes.

## 📄 License

This project is open-sourced software licensed under the [MIT license](LICENSE).

