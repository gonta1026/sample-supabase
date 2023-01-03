export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json }
  | Json[]

export interface Database {
  public: {
    Tables: {
      employees: {
        Row: {
          department: string
          fuga: string
          hogehoge: string
          id: number
          name: string | null
        }
        Insert: {
          department?: string
          fuga: string
          hogehoge: string
          id?: never
          name?: string | null
        }
        Update: {
          department?: string
          fuga?: string
          hogehoge?: string
          id?: never
          name?: string | null
        }
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      [_ in never]: never
    }
  }
}

