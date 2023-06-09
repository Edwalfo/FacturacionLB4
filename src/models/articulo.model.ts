import {Entity, model, property} from '@loopback/repository';

@model({settings: {strict: false}})
export class Articulo extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  IDitem?: number;

  @property({
    type: 'string',
    required: true,
  })
  detalle: string;

  @property({
    type: 'string',
    required: true,
  })
  nombre: string;

  @property({
    type: 'number',
    required: true,
  })
  precio: number;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<Articulo>) {
    super(data);
  }
}

export interface ArticuloRelations {
  // describe navigational properties here
}

export type ArticuloWithRelations = Articulo & ArticuloRelations;
