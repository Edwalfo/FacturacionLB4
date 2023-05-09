import {inject} from '@loopback/core';
import {DefaultCrudRepository} from '@loopback/repository';
import {FacturacionMdbDataSource} from '../datasources';
import {Articulo, ArticuloRelations} from '../models';

export class ArticuloRepository extends DefaultCrudRepository<
  Articulo,
  typeof Articulo.prototype.IDitem,
  ArticuloRelations
> {
  constructor(
    @inject('datasources.FacturacionMDB') dataSource: FacturacionMdbDataSource,
  ) {
    super(Articulo, dataSource);
  }
}
