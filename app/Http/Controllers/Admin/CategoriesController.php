<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category;
use Illuminate\Http\Request;
use App\Image;
use File;

class CategoriesController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request) {
        $keyword = $request->get('search');
        $perPage = 25;

        if (!empty($keyword)) {
            $categories = Category::where('parent_id', 'LIKE', "%$keyword%")
                            ->orWhere('title', 'LIKE', "%$keyword%")
                            ->orWhere('image', 'LIKE', "%$keyword%")
                            ->orWhere('order', 'LIKE', "%$keyword%")
                            ->orWhere('slug', 'LIKE', "%$keyword%")
                            ->latest()->paginate($perPage);
        } else {
            $categories = Category::latest()->paginate($perPage);
        }
        $list[] = "Без категории";
        foreach (Category::getAll() as $i => $item) {
            $list[$item->id] = $item->title;
        }

        return view('admin/categories.index', compact('categories', 'list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create() {
        $list[] = "Без категории";
        foreach (Category::getAll() as $i => $item) {
            $list[$item->id] = $item->title;
        }
        return view('admin/categories.create', compact('list'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request) {
        $this->validate($request, [
            'title' => 'required',
            'slug' => 'required',
        ]);
        $requestData = $request->all();

        Category::create($requestData);

        return redirect('admin/categories')->with('flash_message', 'Category added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id) {
        $category = Category::findOrFail($id);
        $list[] = "Без категории";
        foreach (Category::getAll() as $i => $item) {
            $list[$item->id] = $item->title;
        }
        $image = Image::findOrFail($category['image']);
        return view('admin/categories.show', compact('category', 'image', 'list'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id) {
        $category = Category::findOrFail($id);
        $list[] = "Без категории";
        foreach (Category::getAll() as $i => $item) {
            if ($item->id != $category->id) {
                $list[$item->id] = $item->title;
            }
        }
        $image = Image::findOrFail($category['image']);
        return view('admin/categories.edit', compact('category', 'image', 'list'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, $id) {
        $this->validate($request, [
            'title' => 'required',
            'slug' => 'required',
        ]);
        $requestData = $request->all();

        $category = Category::findOrFail($id);
        $category->update($requestData);

        return redirect('admin/categories')->with('flash_message', 'Category updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id) {
        Category::destroy($id);
        return redirect('admin/categories')->with('flash_message', 'Category deleted!');
    }

}
