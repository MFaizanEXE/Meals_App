
import 'package:flutter/material.dart';
//import 'package:meals/screens/tabs.dart';
//import 'package:meals/widgets/main_drawer.dart';
import 'package:meals/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';




class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({
    super.key,});
    //required this.currentFilters});

  //final Map<Filters,bool> currentFilters;

 // @override
 // ConsumerState<FiltersScreen> createState() {
   // return _FiltersScreenState();
  //}
//}
//class _FiltersScreenState extends ConsumerState<FiltersScreen>{
 // var _glutenFreeFilterSet = false;
 // var _lactoseFreeFilterSet = false;
 // var _vegetarianFreeFilterSet = false;
 // var _veganFreeFilterSet = false;

 // @override
 // void initState() {
  //  super.initState();
 //  final activeFilters = ref.read(filtersprovider);
 //   _glutenFreeFilterSet = activeFilters[Filters.glutenFree]!;
  //  _lactoseFreeFilterSet = activeFilters[Filters.lactoseFree]!;
 //   _vegetarianFreeFilterSet = activeFilters[Filters.vegetarian]!;
 //   _veganFreeFilterSet = activeFilters[Filters.vegan]!;
 // }
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final activeFilters = ref.watch(filtersprovider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      //drawer: MainDrawer(onSelectScreen: (identifier){
       // Navigator.of(context).pop();
       // if(identifier == 'meals'){
         // Navigator.of(context).pushReplacement(
           // MaterialPageRoute(
             // builder: (ctx) => TabsScreen(),
           // ),
          //);
        //}
      //}),
      body: 
      //WillPopScope(
       // onWillPop: ()async {
       //   ref.read(filtersprovider.notifier)
      //    .setFilters({
       //     Filters.glutenFree: _glutenFreeFilterSet,
        //    Filters.lactoseFree: _lactoseFreeFilterSet,
       //     Filters.vegetarian: _vegetarianFreeFilterSet,
       //    Filters.vegan: _veganFreeFilterSet,
       //   });
          //Navigator.of(context).pop();
        //  return true;
      //  },
         Column(
          children: [
            SwitchListTile(
              value: activeFilters[Filters.glutenFree]!,
               onChanged: (isChecked){
                ref.read(filtersprovider.notifier)
                .setFilter(Filters.glutenFree, isChecked);
              
               },
               title: Text(
                'Gluten-free',
               style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
               ),
               ),
               subtitle: Text(
                'Only include gluten-free meals.',
               style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
               ),
               ),
               activeColor: Theme.of(context).colorScheme.tertiary,
               contentPadding: const EdgeInsets.only(left: 34,right: 22),
               ),
               SwitchListTile(
              value: activeFilters[Filters.glutenFree]!,
               onChanged: (isChecked){
                ref.read(filtersprovider.notifier)
                .setFilter(Filters.glutenFree, isChecked);
              
               },
               title: Text(
                'Lactose-free',
               style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
               ),
               ),
               subtitle: Text(
                'Only include lactose-free meals.',
               style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
               ),
               ),
               activeColor: Theme.of(context).colorScheme.tertiary,
               contentPadding: const EdgeInsets.only(left: 34,right: 22),
               ),
                SwitchListTile(
              value: activeFilters[Filters.vegetarian]!,
               onChanged: (isChecked){
                ref.read(filtersprovider.notifier)
                .setFilter(Filters.vegetarian, isChecked);
              
               },
               title: Text(
                'Vegetarian',
               style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
               ),
               ),
               subtitle: Text(
                'Only include Vegetarian meals.',
               style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
               ),
               ),
               activeColor: Theme.of(context).colorScheme.tertiary,
               contentPadding: const EdgeInsets.only(left: 34,right: 22),
               ),
                SwitchListTile(
              value: activeFilters[Filters.vegan]!,
               onChanged: (isChecked){
                ref.read(filtersprovider.notifier)
                .setFilter(Filters.vegan, isChecked);
              
               },
               title: Text(
                'Vegan',
               style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
               ),
               ),
               subtitle: Text(
                'Only include vegan meals.',
               style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
               ),
               ),
               activeColor: Theme.of(context).colorScheme.tertiary,
               contentPadding: const EdgeInsets.only(left: 34,right: 22),
               )
          ],
          ),
      );
   // );
  }
}