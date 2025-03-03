<?php

namespace App\Widgets;

use Illuminate\Support\Facades\Auth;
use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use App\Models\Factura as FacturaModel;

class Factura extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = FacturaModel::count();
        $string = 'Facturas';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon' => 'voyager-receipt',
            'title' => "{$count} {$string}",
            'text' => __('Tiene :count :string en su base de datos. Haga clic en el botón de abajo para ver todas las Facturas.', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => 'Facturas',
                'link' => route('voyager.factura.index'),
            ],
            'image' => Voyager::image('widget/factura.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return in_array(Auth::user()->role->id, [1, 3, 4]);
    }
}
