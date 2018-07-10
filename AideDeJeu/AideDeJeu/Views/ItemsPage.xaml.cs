﻿using AideDeJeu.ViewModels;
using AideDeJeuLib.Monsters;
using AideDeJeuLib.Spells;
using System;
using System.Linq;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AideDeJeu.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ItemsPage : MasterDetailPage
    {
        MainViewModel Main
        {
            get
            {
                return DependencyService.Get<MainViewModel>();
            }
        }
        //INavig//ator Navigator;

        public ItemsPage ()
		{
			InitializeComponent ();

            //DependencyService.Register<INavigator>(new Navigator((Detail as NavigationPage).Navigation));
            
            //Navigator = new Navigator((Detail as NavigationPage).Navigation);
            //BindingContext = viewModel = new MainViewModel(Navigator);
            BindingContext = Main;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            this.MasterBehavior = MasterBehavior.Popover;

            if (Main.Items.Count() == 0)
                Main.LoadItemsCommand.Execute(null);
        }

        private void ItemsListView_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            if (e.Item == null) return;
            ((ListView)sender).SelectedItem = null;
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            this.IsPresented = !this.IsPresented;
        }
    }
}