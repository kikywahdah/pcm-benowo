<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Aset;
use App\Models\Usaha;
use App\Models\Modal;

class DashboardController extends Controller
{
    public function index()
    {
        $totalAset = Aset::count();
        $totalUsaha = Usaha::count();
        $totalModal = Modal::count();
        $totalNilaiModal = Modal::sum('jumlah');

        return view('dashboard', compact('totalAset', 'totalUsaha', 'totalModal', 'totalNilaiModal'));
    }
} 