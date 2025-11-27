<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     * @param  string $role  <-- We add this parameter to accept 'admin', 'moderator', etc.
     */
    public function handle(Request $request, Closure $next, $role): Response
    {
        // 1. Check if user is logged in (just in case)
        if (!Auth::check()) {
            return redirect('/login');
        }

        // 2. Check if the user's role MATCHES the required role
        // $request->user()->role fetches the role from the DB for the current user
        if ($request->user()->role !== $role) {
            // IF NO MATCH: Abort with a 403 Forbidden error
            abort(403, 'Unauthorized action.');
        }

        // 3. If everything is fine, let the request pass to the controller
        return $next($request);
    }
}

?>