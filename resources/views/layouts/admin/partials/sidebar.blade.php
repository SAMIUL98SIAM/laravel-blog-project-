@php
    $setting = App\Models\Setting::first();
@endphp
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ route('admin.dashboard') }}" class="brand-link">
      <img src="{{ asset($setting->site_logo) }}" width="100" height="50" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Dashboard</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset(Auth::user()->image) }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="{{route('admin.dashboard')}}" class="d-block">{{ Auth::user()->name }}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="{{ route('admin.dashboard') }}" class="nav-link {{ (request()->is('admin/dashboard*')) ? 'active': '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="{{ route('admin.categories.index') }}" class="nav-link {{ (request()->is('admin/categories*')) ? 'active': '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Categories
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="{{ route('admin.tags.index') }}" class="nav-link {{ (request()->is('admin/tags*')) ? 'active': '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Tags
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="{{ route('admin.posts.index') }}" class="nav-link {{ (request()->is('admin/posts*')) ? 'active': '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Posts
              </p>
            </a>
          </li>

          <li class="nav-item mt-auto">
            <a href="{{ route('admin.users.index') }}" class="nav-link {{ (request()->is('admin/users*')) ? 'active': '' }}">
              <i class="nav-icon fas fa-user"></i>
              <p>
                Users
              </p>
            </a>
          </li>
          <li class="nav-item mt-auto">
            <a href="{{ route('admin.settings.index') }}" class="nav-link {{ (request()->is('admin/settings*')) ? 'active': '' }}">
              <i class="nav-icon fas fa-cog"></i>
              <p>
                Settings
              </p>
            </a>
          </li>
          <li class="nav-item mt-auto">
            <a href="{{ route('admin.contacts.index') }}" class="nav-link {{ (request()->is('admin/contacts*')) ? 'active': '' }}">
              <i class="nav-icon fas fa-cog"></i>
              <p>
                Messages
              </p>
            </a>
          </li>
          <li class="nav-header">Your Account</li>
          <li class="nav-item mt-auto">
            <a href="{{ route('admin.users.profile') }}" class="nav-link {{ (request()->is('admin/profile*')) ? 'active': '' }}">
              <i class="nav-icon far fa-user"></i>
              <p>
                Your Profile
              </p>
            </a>
          </li>
          <li class="nav-item mt-auto">
            <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="nav-link">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                Logout
              </p>
            </a>
          </li>
          <li class="text-center mt-5">
            <a href="{{ route('website.home') }}" class="btn btn-primary text-white" target="_blank">
              <p class="mb-0">
                View Website
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
